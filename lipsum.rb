#!/usr/bin/env ruby
require 'erb'
require 'shellwords'

my_variable = ARGV[0].upcase
count_num = ARGV[1].to_i
  if count_num == 0
    count_num = 1
  end

if my_variable == "SCI-FI"
  title = "Futurama"
  content ="I never loved you. Bender, quit destroying the universe! I usually try to keep my sadness pent up inside where it can fester quietly as a mental illness. That's right, baby. I ain't your loverboy Flexo, the guy you love so much. You even love anyone pretending to be him! You wouldn't. Ask anyway! I love you, buddy! But, like most politicians, he promised more than he could deliver. It doesn't look so shiny to me. Negative, bossy meat creature! Bender, I didn't know you liked cooking. That's so cute. Please, Don-Bot… look into your hard drive, and open your mercy file! File not found. I don't know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas. I daresay that Fry has discovered the smelliest object in the known universe! Calculon is gonna kill us and it's all everybody else's fault! So I really am important?"
  system("echo #{Shellwords.escape(content)} | pbcopy")
elsif my_variable == "FANTASY"
  title = "Tolkien"
  content = "Relaxed weapon dragon-gold climber doorway plundering burglars flowering smaug draughts unused carted easterly lure towering. Leaf radagast experiences grass-green hats unsuspecting shrieked hewn sheds dealings bringing freely fountain noble-hearted bushy overhung hobbitlike waterside monsters. Split heaved smouldering exposed coughed purchase. Gammers guardroom wail swordsman imitate rock-wall gloin grasped. Smoke ya-harri-hey dragon-haunted dish-covers assembled good-night. Marjoram sea-elves chicken valour begging lore dress dragon-talk bouncing existed rushes. Mountain-wall play bands smith-craft miserableness dragon-spell throb mountain-wall wide-armed leaky helmets stumps drum-shaped glittered chances lane declared old-fashioned pools. Whacked timber chestnut dried thank-you wolf-glade huggins elven-harps orcrist eminent faerie risk pondering rusted circled rockhewn."
  system("echo #{Shellwords.escape(content)} | pbcopy")
elsif my_variable == "ROMANCE"
  title = "Romance"
  content = "Hodor hodor hodor hodor. Hodor. Hodor hodor HODOR! Hodor hodor... Hodor hodor hodor? Hodor hodor - hodor... Hodor hodor hodor hodor hodor hodor; hodor hodor? Hodor hodor hodor hodor; hodor hodor; hodor hodor? Hodor, hodor. Hodor. Hodor, hodor; hodor hodor - hodor, hodor. Hodor hodor hodor hodor hodor! Hodor hodor HODOR! Hodor hodor, hodor. Hodor hodor hodor. Hodor hodor - hodor hodor hodor; hodor hodor hodor? Hodor hodor... Hodor hodor hodor? Hodor hodor HODOR! Hodor hodor hodor hodor; hodor hodor hodor! Hodor, hodor - HODOR hodor, hodor HODOR hodor, hodor hodor. Hodor. Hodor. Hodor hodor hodor - hodor hodor hodor. Hodor hodor - hodor - hodor. Hodor, HODOR hodor, hodor hodor; hodor hodor? Hodor hodor HODOR! Hodor HODOR hodor, hodor hodor hodor! Hodor, hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor, hodor. Hodor. Hodor, hodor; hodor hodor hodor hodor... Hodor hodor hodor."
  system("echo #{Shellwords.escape(content)} | pbcopy")
else
  return abort "Please enter Sci-Fi, Fantasy or Romance as well as required number of paragraphs"
end

new_file = File.open("./#{my_variable}.html", "w+")
new_file << ERB.new(File.read("index.html.erb")).result(binding)
new_file.close
