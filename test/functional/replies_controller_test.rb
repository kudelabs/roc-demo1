require File.expand_path(File.join(File.dirname(__FILE__), '../test_helper'))

class RepliesControllerTest < ActionController::TestCase
  
  test "should create replies" do
    
    @message = messages(:one)
    assert_difference('Reply.count') do
       post :create, :reply => { :body => 'Some test'},:message_id => @message.id
    end 
    
  end
  
  test "should not create replies" do
    
    @message = messages(:one)
    assert_no_difference('Reply.count') do
       post :create, :reply => { :body => ''},:message_id => @message.id  
    end 
    
  end
  
  
  
  
end
