class SectionsController < ApplicationController
  # GET /sections
  # GET /sections.xml
  
  before_filter :find_list
  
  def  find_list
  	if  params[:list_id]
  		@list = List.find_by_id(params[:list_id])
  	end
  end
  
  def index
    #@sections = Section.all
    @sections = Section.where(:list_id =>@list.id)
      @section.items.build
      @section.list_id = @list.id

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sections }
    end
  end
  
  def list
    #@sections = Section.all
    @sections = Section.where(:list_id =>@list.id)
    @items = Item.all
     

    respond_to do |format|
      format.html # index.html.erb
      #format.html {redirect_to :controller => "sections", :action => "new" , :list_id=>@list.id}
      
      format.xml  { render :xml => @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.xml
  def show
    @section = Section.find(params[:id])

    respond_to do |format|
      #format.html {redirect_to :controller => "sections", :action => "new" , :list_id=>@list.id}
      
      format.html # show.html.erb
      format.xml  { render :xml => @section }
    end
  end

  # GET /sections/new
  # GET /sections/new.xml
  def new
    @section = Section.new
    @section.items.build
    @section.list_id = @list.id

    respond_to do |format|
      
      format.html # new.html.erb
      format.xml  { render :xml => @section }
    end
  end
  
  def first
    @section = Section.new
    @section.items.build
    @section.list_id = @list.id

    respond_to do |format|
      
      format.html # new.html.erb
      format.xml  { render :xml => @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find(params[:id])
    @section.list_id = @list.id
  end

  # POST /sections
  # POST /sections.xml
  def create
    @section = Section.new(params[:section])

    respond_to do |format|
      if @section.save
        format.html { redirect_to(@section, :notice => 'Section was successfully created.') }
        format.xml  { render :xml => @section, :status => :created, :location => @section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sections/1
  # PUT /sections/1.xml
  def update
    @section = Section.find(params[:id])

    respond_to do |format|
      if @section.update_attributes(params[:section])
        format.html { redirect_to(@section, :notice => 'Section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.xml
  def destroy
    @section = Section.find(params[:id])
    @section.destroy

    respond_to do |format|
      format.html { redirect_to(sections_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
  
end
