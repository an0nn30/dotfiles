hyper_key = {"cmd", "ctrl"}

-- Application launchers
app_bindings = {
  { 't', 'Alacritty' },
  { 'e', 'Firefox' },
  { 'c', 'Visual Studio Code' },
  { 's', 'Arc' },
}

for i, app in ipairs(app_bindings) do
  hs.hotkey.bind(hyper_key, app[1], function()
    hs.application.launchOrFocus(app[2])
  end)
end

hs.hotkey.bind({'cmd'}, 'e', function()
  hs.execute("/usr/bin/open /Users/dustin")
end)


-- hs.loadSpoon("PublicIP")
-- hs.loadSpoon("ToggleScreenRotation") 



-- spoon.ToggleScreenRotation:bindHotkeys({["LG"] = { {"ctrl", "cmd", "alt"}, "m" }})
-- Shorter menubar for use with M1 macbooks that have notch 
-- spoon.PublicIP.terse = false

-- Get new state when loading configuration
-- spoon.PublicIP.refreshIP()

-- After detecting change wait 10 seconds until 
-- new IP address becomes available
-- function networkChangedCallback(store, keys)
--  hs.timer.doAfter(10, function()
--    spoon.PublicIP.refreshIP()
--  end)
-- end

-- Watch Network Service for IPv4 changes
-- n = hs.network.configuration.open()
--n:monitorKeys("State:/Network/Service/.*/IPv4", true)
--n:setCallback(networkChangedCallback)
--n:start()

hs.hotkey.bind(hyper_key, "r", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
