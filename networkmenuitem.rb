require 'osx/cocoa'

class NetworkMenuItem < OSX::NSMenuItem
  attr_accessor :title

  def create(name)
    @name = name
    self.init
    self
  end
  
  def init
    super_init
    @title = @name
    submenu = NetworkMenu.alloc.create(@name)
    self.setSubmenu(submenu)
    self
  end
  
end

