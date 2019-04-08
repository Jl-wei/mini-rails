require_relative '../models/salutation'

class HelloController < Roads::Controller
  def say_hello
    render :say_hello, :from => "view"
  end

  def index
    salutations = Salutation.all
    render :index, :salutations => salutations
  end

  def show
    salutation = Salutation.find(params["id"])
    render :hello, :salutation => salutation
  end

  def create
    s = Salutation.create("name" => "Hello")
    render :hello, :salutation => s
  end
end