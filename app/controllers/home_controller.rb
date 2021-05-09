class HomeController < ApplicationController
    def index
    @posts= Post.all
    @hanghoas=Hanghoa.all
    @danhmucs=Danhmuc.all
    @hanghoasbydanhmuc = Hanghoa.where("iddanhmuc =?","1")
    
    end
end
