-- Path of Building
--
-- Module: Build Site Tools
-- Functions used to import and export PoB build codes from external websites
--

buildSites = { }

-- Import/Export websites list used in dropdowns
buildSites.websiteList = {
	{
		label = "Maxroll", id = "Maxroll", matchURL = "maxroll%.gg/poe2/pob/.*", regexURL = "maxroll%.gg/poe2/pob/(.+)%s*$", downloadURL = "maxroll%.gg/poe2/api/pob/%1",
		codeOut = "https://maxroll.gg/poe2/pob/", postUrl = "https://maxroll.gg/poe2/api/pob", postFields = "pobCode=", linkURL = "maxroll%.gg/poe2/pob/%1"
	},
	{
		label = "pobb.in", id = "POBBin", matchURL = "pobb%.in/.+", regexURL = "pobb%.in/(.+)%s*$", downloadURL = "pobb.in/pob/%1",
		codeOut = "https://pobb.in/", postUrl = "https://pobb.in/pob/", postFields = "", linkURL = "pobb.in/%1"
	},
	{
		label = "poe2.ninja", id = "Poe2Ninja", matchURL = "poe2%.ninja/pob/%w+", regexURL = "poe2%.ninja/pob/(%w+)%s*$", downloadURL = "poe2.ninja/pob/raw/%1",
		codeOut = "", postUrl = "https://poe2.ninja/pob/api/api_post.php", postFields = "api_paste_code=", linkURL="poe2.ninja/pob/%1"
	},
	{ 
		label = "poe2db.tw", id = "PoE2DB", matchURL = "poe2db%.tw/.+", regexURL = "poe2db%.tw/pob/(.+)%s*$", downloadURL = "poe2db.tw/pob/%1/raw", 
		codeOut = "", postUrl = "https://poe2db.tw/pob/api/gen", postFields = "", linkURL = "poe2db.tw/pob/%1" 
	},
	{
		label = "Pastebin.com", id = "pastebin", matchURL = "pastebin%.com/%w+", regexURL = "pastebin%.com/(%w+)%s*$", downloadURL = "pastebin.com/raw/%1", linkURL = "pastebin.com/%1"
	},
	{ label = "PastebinP.com", id = "pastebinProxy", matchURL = "pastebinp%.com/%w+", regexURL = "pastebinp%.com/(%w+)%s*$", downloadURL = "pastebinp.com/raw/%1", linkURL = "pastebin.com/%1" },
	{ label = "Rentry.co", id = "rentry", matchURL = "rentry%.co/%w+", regexURL = "rentry%.co/(%w+)%s*$", downloadURL = "rentry.co/paste/%1/raw", linkURL = "rentry.co/%1" },
}

--- Uploads a PoB build code to a website
--- @param websiteInfo Table Contains the postUrl, any postParams, and a prefix to add to the response
--- @param buildCode String The build code that will be uploaded
function buildSites.UploadBuild(buildCode, websiteInfo)
	local response
	if websiteInfo then
		response = LaunchSubScript([[
			local code, connectionProtocol, proxyURL = ...
			local curl = require("lcurl.safe")
			local page = ""
			local easy = curl.easy()
			easy:setopt_url(']]..websiteInfo.postUrl..[[')
			easy:setopt(curl.OPT_POST, true)
			easy:setopt(curl.OPT_USERAGENT, "Path of Building/]]..launch.versionNumber..[[")
			easy:setopt(curl.OPT_POSTFIELDS, ']]..websiteInfo.postFields..[['..code)
			easy:setopt(curl.OPT_ACCEPT_ENCODING, "")
			if connectionProtocol then
				easy:setopt(curl.OPT_IPRESOLVE, connectionProtocol)
			end
			if proxyURL then
				easy:setopt(curl.OPT_PROXY, proxyURL)
			end
			easy:setopt_writefunction(function(data)
				page = page..data
				return true
			end)
			easy:perform()
			local res = easy:getinfo_response_code()
			easy:close()
			if (res == 200) then
				return page
			else
				return nil, page
			end
		]], "", "", buildCode, launch.connectionProtocol, launch.proxyURL)
	end
	return response
end

--- Downloads a PoB build code from a website
--- @param link String A link to the site that contains the link to the raw build code
--- @param websiteInfo Table Contains the downloadUrl
--- @param callback Function The function to call when the download is complete
function buildSites.DownloadBuild(link, websiteInfo, callback)
	local siteCodeURL
	-- Only called on program start via protocol handler
	if not websiteInfo then
		for _, siteInfo in ipairs(buildSites.websiteList) do
			if link:match("^pob2:[/\\]*" .. siteInfo.id:lower() .. "[/\\]+(.+)") then
				siteCodeURL = link:gsub("^pob2:[/\\]*" .. siteInfo.id:lower() .. "[/\\]+(.+)", "https://" .. siteInfo.downloadURL)
				websiteInfo = siteInfo
				break
			end
		end
	else -- called via the ImportTab
		siteCodeURL = link:gsub(websiteInfo.regexURL, websiteInfo.downloadURL)
	end
	if websiteInfo then
		launch:DownloadPage(siteCodeURL, function(response, errMsg)
			if errMsg then
				callback(false, errMsg, siteCodeURL)
			else
				callback(true, response.body, siteCodeURL)
			end
		end)
	else
		callback(false, "Download information not found", siteCodeURL)
	end
end

-- Parses and converts URI's to import links. Currently only supports protocol handler URI's, extend as needed.
-- @param uri String Example: pob2://pobbin/<id> or pob2://poeninja/<id>
function buildSites.ParseImportLinkFromURI(uri)
	local importLink = nil
	
	-- Check if it's an URI from protocol handler
	for _, siteInfo in ipairs(buildSites.websiteList) do
		if uri:match("^pob2:[/\\]*" .. siteInfo.id:lower() .. "[/\\]+(.+)") then
			importLink = uri:gsub("^pob2:[/\\]*" .. siteInfo.id:lower() .. "[/\\]+(.+)", "https://" .. siteInfo.linkURL)
			break
		end
	end

	return importLink
end