#
# Cookbook:: databag
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

search(:sample , "*:*" ).each do |userid|
	#student_name = userid['username']
        score = "#{userid['score']}"
	puts "#{userid['score']}"
	puts "SCORE = #{score}"
end
