local time = 60

for i = 1, 60 do
	wait(1)
	time = time - 1
	script.Parent.Text = tostring(time)
end
