require 'test_helper'

class RelatedDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @related_date = related_dates(:one)
  end

  test "should get index" do
    get related_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_related_date_url
    assert_response :success
  end

  test "should create related_date" do
    assert_difference('RelatedDate.count') do
      post related_dates_url, params: { related_date: { Appraisal_Date: @related_date.Appraisal_Date, Closing_Date: @related_date.Closing_Date, Create_Date: @related_date.Create_Date, Escrow_Open_Date: @related_date.Escrow_Open_Date, Est_Closing_Date: @related_date.Est_Closing_Date, Generate_Closing_Instruction: @related_date.Generate_Closing_Instruction, Inspection_Date: @related_date.Inspection_Date, Open_Date: @related_date.Open_Date, Order_Loan_Doc_Date: @related_date.Order_Loan_Doc_Date, Prelim_Date: @related_date.Prelim_Date, Sch_To_Refine_Date: @related_date.Sch_To_Refine_Date } }
    end

    assert_redirected_to related_date_url(RelatedDate.last)
  end

  test "should show related_date" do
    get related_date_url(@related_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_related_date_url(@related_date)
    assert_response :success
  end

  test "should update related_date" do
    patch related_date_url(@related_date), params: { related_date: { Appraisal_Date: @related_date.Appraisal_Date, Closing_Date: @related_date.Closing_Date, Create_Date: @related_date.Create_Date, Escrow_Open_Date: @related_date.Escrow_Open_Date, Est_Closing_Date: @related_date.Est_Closing_Date, Generate_Closing_Instruction: @related_date.Generate_Closing_Instruction, Inspection_Date: @related_date.Inspection_Date, Open_Date: @related_date.Open_Date, Order_Loan_Doc_Date: @related_date.Order_Loan_Doc_Date, Prelim_Date: @related_date.Prelim_Date, Sch_To_Refine_Date: @related_date.Sch_To_Refine_Date } }
    assert_redirected_to related_date_url(@related_date)
  end

  test "should destroy related_date" do
    assert_difference('RelatedDate.count', -1) do
      delete related_date_url(@related_date)
    end

    assert_redirected_to related_dates_url
  end
end
