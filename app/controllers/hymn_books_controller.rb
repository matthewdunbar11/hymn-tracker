class HymnBooksController < ApplicationController
  before_action :set_hymn_book, only: [:show, :edit, :update, :destroy]

  # GET /hymn_books
  # GET /hymn_books.json
  def index
    @hymn_books = HymnBook.all
  end

  # GET /hymn_books/1
  # GET /hymn_books/1.json
  def show
  end

  # GET /hymn_books/new
  def new
    @hymn_book = HymnBook.new
  end

  # GET /hymn_books/1/edit
  def edit
  end

  # POST /hymn_books
  # POST /hymn_books.json
  def create
    @hymn_book = HymnBook.new(hymn_book_params)

    respond_to do |format|
      if @hymn_book.save
        format.html { redirect_to @hymn_book, notice: 'Hymn book was successfully created.' }
        format.json { render :show, status: :created, location: @hymn_book }
      else
        format.html { render :new }
        format.json { render json: @hymn_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hymn_books/1
  # PATCH/PUT /hymn_books/1.json
  def update
    respond_to do |format|
      if @hymn_book.update(hymn_book_params)
        format.html { redirect_to @hymn_book, notice: 'Hymn book was successfully updated.' }
        format.json { render :show, status: :ok, location: @hymn_book }
      else
        format.html { render :edit }
        format.json { render json: @hymn_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hymn_books/1
  # DELETE /hymn_books/1.json
  def destroy
    @hymn_book.destroy
    respond_to do |format|
      format.html { redirect_to hymn_books_url, notice: 'Hymn book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hymn_book
      @hymn_book = HymnBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hymn_book_params
      params.require(:hymn_book).permit(:name)
    end
end
