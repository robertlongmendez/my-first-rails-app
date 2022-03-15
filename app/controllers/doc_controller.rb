class DocController < ApplicationController

  def new
    @docs = Doc.all
  end
  
  def create
    @doc = doc.new(params.require(:doc).permit(:title, :description))
    @doc.save
    redirect_to @doc
  end