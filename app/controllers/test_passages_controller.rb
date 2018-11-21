class TestPassagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test_passage, only: %i[show update result gist]

  def show
  end

  def result
  end

  def gist
    result = GistQuestionService.new(@test_passage.current_question).call
    if result.html_url.present?
      current_user.gists.create(question: @test_passage.current_question, gist_url: result.html_url)
      flash[:notice] = t('.success', gist_url: result.html_url)
      redirect_to @test_passage
    else
      flash[:alert] = t('.failure')
      redirect_to @test_passage
    end
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  #def new_gist
   # current_user.gists.create(question: @test_passage.current_question, gist_url: result.html)
  #end

end
