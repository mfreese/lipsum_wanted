require 'erb'

lipsum_wanted = ARGV[0]

puts lipsum_wanted

 first= "Mumblecore cray readymade four loko. Banjo gastropub forage sustainable tacos. Whatever ramps everyday carry unicorn, flannel gentrify next level bicycle rights kombucha. Kitsch gochujang fashion axe, pug messenger bag coloring book tofu kogi sriracha four loko echo park 8-bit cardigan paleo mlkshk. Green juice hexagon butcher, distillery coloring book you probably haven't heard of them photo booth intelligentsia leggings raclette chartreuse ennui. Cornhole activated charcoal next level, edison bulb church-key fixie distillery meh williamsburg put a bird on it bespoke narwhal craft beer. Offal wolf crucifix kickstarter direct trade thundercats, chambray selfies unicorn lyft austin you probably haven't heard of them.
Oh. You need a little dummy text for your mockup? How quaint."

second= "Portland retro typewriter air plant. Ennui roof party biodiesel, taxidermy raclette gastropub craft beer DIY kombucha. Small batch vaporware humblebrag, bushwick chillwave vinyl pabst poutine actually. Actually fingerstache biodiesel, fanny pack plaid coloring book deep v. Pabst chia forage la croix salvia. Banh mi twee fap YOLO fam, hot chicken artisan viral slow-carb tousled helvetica narwhal sustainable. Echo park selfies farm-to-table bitters, copper mug dreamcatcher narwhal."

third= "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."

if lipsum_wanted=="first"
  output= first
elsif lipsum_wanted== "second"
  output= second
elsif lipsum_wanted== "third"
    output= third
  else
  puts "choose between first, second, third."
end
new_file = File.open("./#{lipsum_wanted}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
