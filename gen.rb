i = 0
y = 0
file = File.open('for-style.css', 'a')
loop do
    i += 1
    string = " .fs-#{i} { font-size: #{i}px!important; }  .fs#{i} { font-size: #{i}px!important; }"
    file.write(string)
    if i == 90
        break
    end
end
file.write("@media (max-width: 991px) {")
loop do
    y += 1
    new_i = format("%.2f", y * 0.65)
    
    string = " .fs-#{y} { font-size: #{new_i}px!important; }  .fs#{y} { font-size: #{new_i}px!important; }"
    file.write(string)
    if y == 90
        break
    end
end
file.write("}")
file.close

