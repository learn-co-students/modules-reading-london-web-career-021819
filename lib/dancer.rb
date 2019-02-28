require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer

  # NameSpacing (::) refers to the parnt and child relationship of nested modules 
  extend FancyDance::ClassMethods
  # with extend, a class can use all the methods of a module as class methods
  include FancyDance::InstanceMethods
  # with include, a class can use all the methods of a module as instance methods

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
