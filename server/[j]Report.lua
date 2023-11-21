
local ReportData = {}


RegisterCommand("report", function(source)
	TriggerClientEvent("sublime_administration:reportMenu", source)
	--[[ if args[1] ~= nil then
		local xPlayer = ESX.GetPlayerFromId(source)
		table.insert(ReportData, {
			player = source,
			playerName = GetPlayerName(source),
			message = args
		})
		xPlayer.showNotification("Report envoyé avec succès")
		local logValue = ("||@here||  \n **Joueur: ** `%s` \n ```%s```"):format(GetPlayerName(source), table.concat(args, " "))
		TriggerEvent("lexinor_commons:SendSimpleWebhookLog", "https://discord.com/api/webhooks/1165330205896867910/Kh0UbCOjgDkBmk_iUQeG2AlMgFd_POCCOfth8WlzrmxVs_hxyrDg_0rFQlAxp-AHM3s_", logValue, "Report Joueur")
		_Admin.Print("[^1NEW REPPORT ^7- ^2"..GetPlayerName(source).."^7] Message : ^6".. table.concat(args, " ").."^7")
	end ]]
end, false)



ESX.RegisterServerCallback(_Admin.Prefix.."GetReports", function(source, cb, type)
	cb(ReportData)
end)


RegisterServerEvent(_Admin.Prefix.."ManageReports")
AddEventHandler(_Admin.Prefix.."ManageReports", function(type, args)
	if type == "clearall" then
		ReportData = {}
	elseif type == "delete_report" then
		table.remove(ReportData, args.index)
	end
end)

RegisterServerEvent("sublime_administration:sendreport")
AddEventHandler("sublime_administration:sendreport", function(raison, text)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	if raison and text and xPlayer then
		local logValue = ("||@here||  \n **Raison: ** `%s` \n **Joueur: ** `%s` \n **ID: ** `%s` \n ```%s```"):format(raison, xPlayer.getName(), source, text)
		TriggerEvent("lexinor_commons:SendSimpleWebhookLog", "https://discord.com/api/webhooks/1165330205896867910/Kh0UbCOjgDkBmk_iUQeG2AlMgFd_POCCOfth8WlzrmxVs_hxyrDg_0rFQlAxp-AHM3s_", logValue, "Report Joueur")
	end
end)


