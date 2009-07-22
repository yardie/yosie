class BookingStatusesController < ApplicationController

  # GET /booking_statuses/new
  # GET /booking_statuses/new.xml
  def new
    @booking_status = BookingStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @booking_status }
    end
  end

  # GET /booking_statuses/1/edit
  def edit
    @booking_status = BookingStatus.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.xml
  def create
    @booking = Booking.new(params[:booking])
    @booking.user_id = current_user.id # TODO - if administrator is logged in, allow selection or (new) entry of user
    @booking.author_id = current_user.id
    @booking.latest_editor_id = current_user.id

    respond_to do |format|
      if @booking.save
        flash[:notice] = 'Booking was successfully created.'
        format.html { redirect_to(@booking) }
        format.xml  { render :xml => @booking, :status => :created, :location => @booking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @booking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bookings/1
  # PUT /bookings/1.xml
  def update
    @booking = Booking.find(params[:id])
    @booking.latest_editor_id = current_user.id

    respond_to do |format|
      if @booking.update_attributes(params[:booking])
        flash[:notice] = 'Booking was successfully updated.'
        format.html { redirect_to(@booking) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @booking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.xml
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to(bookings_url) }
      format.xml  { head :ok }
    end
  end
end
