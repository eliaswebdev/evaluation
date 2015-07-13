class Admin::StudentsController < AdminController
  before_action :set_admin_student, only: [:show, :edit, :update, :destroy]

  # GET /admin/students
  # GET /admin/students.json
  def index
    @q = Student.ransack(params[:q])
    @students = @q.result(distinct: true).page(params[:page]).per(10)    
  end

  def search
    index
    render :index
  end  

  # GET /admin/students/1
  # GET /admin/students/1.json
  def show
  end

  # GET /admin/students/new
  def new
    @student = Student.new
  end

  # GET /admin/students/1/edit
  def edit
  end

  # POST /admin/students
  # POST /admin/students.json
  def create
    @student = Student.new(admin_student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/students/1
  # PATCH/PUT /admin/students/1.json
  def update
    respond_to do |format|
      if @student.update(admin_student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/students/1
  # DELETE /admin/students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to admin_students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_student_params
      params.require(:student).permit(:name, homeworks_attributes: [:id, :title, :description, :_destroy, evaluations_attributes: [:id, :student_id, :homework_id, :score, :_destroy]])
      # params.require(:student).permit!
    end
end
