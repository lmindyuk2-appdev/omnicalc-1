class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end
  def calculate_square
    @num = params.fetch("number_to_square").to_f
    @square_num = @num**2
    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @num = params.fetch("number_to_take_a_root").to_f
    @square_root = @num**(0.5)
    render({ :template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/random_results.html.erb"})
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("apr_input").to_f
    @num_years = params.fetch("years_input").to_f
    @principal = params.fetch("principal_input").to_f
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
end
