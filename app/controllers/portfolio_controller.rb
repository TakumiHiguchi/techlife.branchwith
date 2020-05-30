class PortfolioController < ApplicationController
    before_action :normalization #herokuUrl正規化
    def index
        require "date"
        
        d = Date.today
        pfOP=(d - Date.new(2020, 1 ,21)).to_i
        musicbranchwithOP=(d - Date.new(2018, 10 ,29)).to_i
        bOP=(d - Date.new(2020, 2 ,11)).to_i
        if (pfOP>365) then
            r1="#{pfOP/365}年（#{pfOP}日)"
        else
            r1="#{pfOP}日"
        end
        if (musicbranchwithOP>365) then
            r2="#{musicbranchwithOP/365}年（#{musicbranchwithOP}日)"
        else
            r2="#{musicbranchwithOP}日"
        end
        if (bOP>365) then
            r3="#{bOP/365}年（#{bOP}日)"
        else
            r3="#{bOP}日"
        end
        @data={"year" => d.year,"month" => d.month,"day" => d.day,"age" => (Date.today.strftime("%Y%m%d").to_i - 19990708) / 10000,"portfolioOP" =>r1,"mbwOP" => r2,"bitcoinexOP" => r3}
    end
end
