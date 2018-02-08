function run()
  is_new,name,sec,cmd,rel,res,val = reaper.get_action_context()
  if is_new then
    reaper.ShowConsoleMsg(name .. "\nrel: " .. rel .. "\nres: " .. res .. "\nval = " .. val .. "\n")
    if val == 1 then
    	reaper.Main_OnCommand(40173,0) 
    else
    	reaper.Main_OnCommand(40172,0) 
    end
  end
  -- reaper.defer(run)

end

function onexit()
  reaper.ShowConsoleMsg("<-----\n")
end

reaper.defer(run)
-- reaper.atexit(onexit)
