class Notifications < ActionMailer::Base
  default :from => "barcodenyc@gmail.com"

  def join_crawl_message(user, crawl)
    @user = user
    @crawl = crawl
    mail :to => user.email, :subject => "You have successfully joined #{crawl.name}"
  end

  def made_crawl_message(user, crawl)
    @user = user
    @crawl = crawl
    mail :to => user.email, :subject => "You have successfully made the #{crawl.name} Pub Crawl"
  end

  def join_my_crawl_message(user, maker, crawl)
    @maker = maker
    @crawl = crawl
    mail :to => user, :subject => "#{maker.name} wants you to join his/her Pub Crawl"
    @crawls = PubCrawl.all
  end
end
