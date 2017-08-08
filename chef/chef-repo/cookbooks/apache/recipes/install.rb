

node['apache']['packages'].each do |pack|
	package "#{pack}" do 
		action :install
	end
end

