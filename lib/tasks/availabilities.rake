namespace "bc" do
  desc "Creates Availabilities For Pub Crawls"
  task :make_avail => :environment do
    Venue.all.each do |venue|
      a = Availability.create(date:Date.today, promotion:"free jamaican beef patty")
      venue.availabilities << a
      puts "Added availability #{a.id} to #{venue.name}"
    end
  end
  desc "Removes Old Availabilities"
  task :remove_old => :environment do
    Availability.all.each do |x|
      if x.date.past?
        puts "Deleteing availability #{x.id}..."
        x.delete
      end
    end
  end
  # desc "Create Pub Crawls"
  # task :make_crawls => :environment do
  # end
end
