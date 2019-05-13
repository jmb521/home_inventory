class ItemsController < ApplicationController

  # GET: /items
  get "/items" do
    @items = Item.all
    erb :"/items/index.html"
  end

  # GET: /items/new
  get "/items/new" do

    erb :"/items/new.html"
  end

  # POST: /items
  post "/items" do
    
    @item = Item.new(params[:item])
    if @item.save
      redirect "/items"
    else
      redirect "/items/new"
    end
  end

  # GET: /items/5
  get "/items/:id" do
    erb :"/items/show.html"
  end

  # GET: /items/5/edit
  get "/items/:id/edit" do
    erb :"/items/edit.html"
  end

  # PATCH: /items/5
  patch "/items/:id" do
    redirect "/items/:id"
  end

  # DELETE: /items/5/delete
  delete "/items/:id/delete" do
    redirect "/items"
  end
end
