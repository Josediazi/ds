local p=game:GetService"Players".LocalPlayer
local r=game:GetService"RunService"
if not p then return end
local g=Instance.new"ScreenGui"
g.Name="GIFView"
g.ResetOnSpawn=false
g.Parent=p:WaitForChild"PlayerGui"
local f=Instance.new"Frame"
f.Size=UDim2.new(0,320,0,320)
f.Position=UDim2.new(0.5,-160,0.5,-160)
f.BackgroundTransparency=1
f.Parent=g
local u={"https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_0.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_1.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_2.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_3.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_4.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_5.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_6.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_7.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_8.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_9.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_10.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_11.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_12.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_13.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_14.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_15.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_16.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_17.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_18.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_83946b2ee331_frame_19.png"}
local a={}
local c=1
local t=true
local d=100
local hash="83946b2ee331"
local au="audio_vrY1THC_NQE_1780345515064.mp3"
if not isfile(au) then writefile(au,game:HttpGet("https://raw.githubusercontent.com/Josediazi/ds/main/audios/audio_vrY1THC_NQE_1780345515064.mp3")) end
local snd=Instance.new"Sound"
snd.SoundId=getcustomasset(au)
snd.Volume=1
snd.Looped=true
snd.Parent=game.Workspace
snd:Play()
for i=1,#u do
local n="f"..i.."_"..hash..".png"
if not isfile(n) then writefile(n,game:HttpGet(u[i])) end
local l=Instance.new"ImageLabel"
l.Size=UDim2.new(1,0,1,0)
l.BackgroundTransparency=1
l.Image=getcustomasset(n)
l.Visible=(i==1)
l.Parent=f
a[i]=l
end
local b=Instance.new"TextButton"
b.Size=UDim2.new(0,60,0,30)
b.Position=UDim2.new(0.5,-170,1,10)
b.Text="Pause"
b.BackgroundColor3=Color3.fromRGB(40,40,40)
b.TextColor3=Color3.new(1,1,1)
b.Font=Enum.Font.GothamBold
b.TextSize=13
b.BorderSizePixel=0
b.Parent=g
local x=Instance.new"TextButton"
x.Size=UDim2.new(0,60,0,30)
x.Position=UDim2.new(0.5,110,1,10)
x.Text="Stop"
x.BackgroundColor3=Color3.fromRGB(180,40,40)
x.TextColor3=Color3.new(1,1,1)
x.Font=Enum.Font.GothamBold
x.TextSize=13
x.BorderSizePixel=0
x.Parent=g
b.MouseButton1Click:Connect(function()
t=not t
b.Text=t and"Pause"or"Play"
if snd then if t then snd:Resume() else snd:Pause() end end
end)
x.MouseButton1Click:Connect(function()
if snd then snd:Stop() snd:Destroy() end
g:Destroy()
end)
local lt=tick()
r.RenderStepped:Connect(function()
if t then
local nt=tick()
if nt-lt>=d/1000 then
lt=nt
a[c].Visible=false
c=c+1
if c>#a then c=1 end
a[c].Visible=true
end
end
end)