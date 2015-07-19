require "sinatra"

get "/" do
	erb :index
end

get "/quiz" do
	methods = {:1 => "The whole thing all at once.", 
		:2 => "One bite at a time.", 
		:3 => "Slow and methodical nibbles examining the results of each bite afterwards.", 
		:4 => "In little feverous nibbles.", 
		:5 => "Dunked in some liquid (milk, coffee...).", 
		:6 => "Twisted apart, the inside, then the cookie.", 
		:7 => "Twisted apart, the inside, and toss the cookie.", 
		:8 => "Just the cookie, not the inside.", 
		:9 => "I just like to lick them, not eat them.", 
		:10 => "I don't have a favorite way because I don't like Oreo."}
	@methods = methods
	erb :quiz_view
end

get "/quiz/:number" do |number|
	methods = {:1 => {
				:description => "The whole thing all at once.",
				:personality => "This means you consume life with abandon, you are fun to be with, exciting, carefree with some hint of recklessness. You are totally irresponsible. No one should trust you with their children."}
			:2 => {
				:description => "One bite at a time.",
				:personality => "You are lucky to be one of the 5.4 billion other people who eat their Oreos this very same way. Just like them, you lack imagination, but that's okay, not to worry, you're normal."} 
			:3 => {
				:description => "Slow and methodical nibbles examining the results of each bite afterwards.",
				:personality => "You follow the rules. You're very tidy and orderly. You're very meticulous in every detail with every thing you do to the point of being anal retentive and irritating to others. Stay out of the fast lane if you're only going to go the speed limit."} 
			:4 => {
				:description => "In little feverous nibbles.",
				:personality => "Your boss likes you because you get your work done quickly. You always have a million things to do and never enough time to do them. Mental breakdowns and suicides run in your family. Valium and Ritalin would do you good."} 
			:5 => {
				:description => "Dunked in some liquid (milk, coffee...).",
				:personality => "Every one likes you because you are always up beat. You like to sugar coat unpleasant experiences and rationalize bad situations into good ones. You are in total denial about the shambles you call a life. You have a propensity towards narcotic addiction."} 
			:6 => {
				:description => "Twisted apart, the inside, then the cookie.",
				:personality => "You have a highly curious nature. You take pleasure in breaking things apart to find out how they work, though not always able to put them back together, so you destroy all the evidence of your activities. You deny your involvement when things go wrong. You are a compulsive liar and exhibit deviant, if not criminal, behavior."} 
			:7 => {
				:description => "Twisted apart, the inside, and toss the cookie.",
				:personality => " You are good at business and take risk that pay off. You take what you want and throw the rest away. You are greedy, selfish, mean, and lack feelings for others. You should be ashamed of yourself. But that's ok, you don't care, you got yours."} 
			:8 => {
				:description => "Just the cookie, not the inside.",
				:personality => "You enjoy pain."} 
			:9 => {
				:description => "I just like to lick them, not eat them.",
				:personality => "Stay away from small furry animals and seek professional medical help - immediately."} 
			:10 => {
				:description => "I don't have a favorite way because I don't like Oreo.",
				:personality => "You probably come from a rich family, and like to wear nice things, and go to up-scale restaurants. You are particular and fussy about the things you buy, own, and wear. Things have to be just right. You like to be pampered. You are a prim. Nobody likes you."}
	@methods = methods
	@number = methods[number.to_sym]
	@description = methods[number.to_sym][:description]
	@personality = methods[number.to_sym][:personality]
	erb :personality_view
end


