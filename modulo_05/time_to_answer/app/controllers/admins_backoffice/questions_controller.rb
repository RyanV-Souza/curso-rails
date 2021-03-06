class AdminsBackoffice::QuestionsController < AdminsBackofficeController
  before_action :set_question, only: [:edit, :update, :destroy]


  def index
    @questions = Question.all.order(:description).page(params[:page])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params_question)

    if @question.save
      redirect_to admins_backoffice_questions_path, notice: "Pergunta cadastrada com sucesso!"
    else
      render :new  
    end
  end

  def edit
  end

  def update
    if @question.update(params_question)
      redirect_to admins_backoffice_questions_path, notice: "Pergunta atualizada com sucesso!"
    else
      render :edit  
    end
  end

  def destroy
    if @question.destroy
      redirect_to admins_backoffice_questions_path, notice: "Pergunta excluída com sucesso!"
    else
      render :index  
    end
  end

  private


  def set_question
    @question = Question.find(params[:id])
  end

  def params_question
    params_question = params.require(:question).permit(:description)
  end

end
