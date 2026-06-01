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
local u={"https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_0.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_1.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_2.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_3.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_4.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_5.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_6.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_7.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_8.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_9.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_10.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_11.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_12.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_13.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_14.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_15.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_16.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_17.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_18.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_93af2b6729e1_frame_19.png"}
local a={}
local c=1
local t=true
local d=100
local hash="93af2b6729e1"
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
end)
x.MouseButton1Click:Connect(function()
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