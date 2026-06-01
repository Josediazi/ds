local p=game:GetService"Players".LocalPlayer
local r=game:GetService"RunService"
if not p then return end

local g=Instance.new"ScreenGui"
g.Name="GIFView"
g.ResetOnSpawn=false
g.Parent=p:WaitForChild"PlayerGui"

local f=Instance.new"Frame"
f.Size=UDim2.new(0,64,0,64)
f.Position=UDim2.new(0.5,-32,0.5,-32)
f.BackgroundTransparency=1
f.Parent=g

local u={"https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_0.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_1.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_2.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_3.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_4.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_5.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_6.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_7.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_8.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_9.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_10.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_11.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_12.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_13.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_14.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_15.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_16.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_17.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_18.png","https://raw.githubusercontent.com/Josediazi/ds/main/frames/gif_67767961b7dd_frame_19.png"}
local a={}
local c=1
local t=true
local d=100
local hash="67767961b7dd"

for i=1,#u do
local n="f"..i.."_"..hash..".png"
if not isfile(n) then
writefile(n,game:HttpGet(u[i]))
end
local l=Instance.new"ImageLabel"
l.Size=UDim2.new(1,0,1,0)
l.Image=getcustomasset(n)
l.Visible=(i==1)
l.Parent=f
a[i]=l
end

local b=Instance.new"TextButton"
b.Size=UDim2.new(0,60,0,30)
b.Position=UDim2.new(0.5,-80,1,-40)
b.Text="⏸️"
b.Parent=g

local x=Instance.new"TextButton"
x.Size=UDim2.new(0,60,0,30)
x.Position=UDim2.new(0.5,20,1,-40)
x.Text="❌"
x.Parent=g

b.MouseButton1Click:Connect(function()
t=not t
b.Text=t and"⏸️"or"▶️"
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