class HelloController < Roads::Controller
  def say_hello
    render :say_hello, :from => "view"
  end
end