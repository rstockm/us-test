--[[
################################################################################
# 
# Copyright (c) 2014-2017 Ultraschall (http://ultraschall.fm)
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 
################################################################################
]]
 

-- Print Message to console (debugging)
function Msg(val)
  reaper.ShowConsoleMsg(tostring(val).."\n")
end



is_new,name,sec,cmd,rel,res,val = reaper.get_action_context()
-- state = reaper.GetToggleCommandStateEx(sec, cmd) 



tracknum = reaper.GetTrack(0, 0)
--tracknum = reaper.GetMasterTrack(0)
numsends = reaper.GetTrackNumSends(tracknum, 1)

 retval, strNeedBig = reaper.GetTrackStateChunk(tracknum, "", 1)
-- reaper.SetTrackStateChunk(MediaTrack track, string str, boolean isundoOptional)

-- size = reaper.SetProjExtState(0, "routing", "0", strNeedBig)

 -- retval, valOutNeedBig = reaper.GetProjExtState( 0, "routing", "0" )
 -- result = reaper.SetTrackStateChunk(tracknum, valOutNeedBig, 1)

Msg(is_new)
Msg(name)
Msg(sec)
Msg(cmd)
Msg(rel)
Msg(res)
Msg(val)
-- Msg(strNeedBig)