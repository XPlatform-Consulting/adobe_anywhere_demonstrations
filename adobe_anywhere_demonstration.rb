class AdobeAnywhereDemonstration < ActiveRecord::Base
  include Action

  # Default Values

  DEFAULT_HOST_ADDRESS  = 'localhost'
  DEFAULT_HOST_PORT     = ''
  DEFAULT_USERNAME      = 'admin'
  DEFAULT_PASSWORD      = 'password'

  # Input Parameters

  VAR_OPERATION = 'operation'
  OPERATION_LIST = [
    'Create_User',
    'Create_User_Group',
    'Add_User_to_Group',
    'List_Users',
    'List_User_by_User_ID',
    'Create_Production',
    'Delete_Production',
    'Get_Production_ID_by_Name',
    'List_Productions',
    'List_Asset_for_Production',
    'Create_Production_Conversion',
    'Create_Asset',
    'Get_Export_Preset',
    'Export_Asset',
    'Add_Group_to_Production',
    'Add_User_to_Production',
    'Remove_Group_from_Production',
    'Remove_User_from_Production'
  ]

  # Output Fields
  # TODO Add Output Fields


  # Revision history
  # => 0.0.1 initial release
  def self.version
    return 0, 0, 1
  end

  def self.display_name
    'Adobe Anywhere'
  end

  # The Plug-in Description
  def description
    'This action plug-in can be used to interact with Adobe Anywhere.'
  end

  def category
    [ CATEGORY_INTEGRATION ]
  end

  def self.dependencies
    [ ]
  end

  def inputs_spec
    @required_inputs = {}
    @optional_inputs = { '' => TYPE_STRING }

    return @required_inputs, @optional_inputs
  end

  def outputs_spec
    return { '' => TYPE_STRING }
  end

  def execute

  end


end