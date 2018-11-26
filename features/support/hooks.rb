World(Helper)

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    scenario_name = scenario.name.delete(',', '')
    scenario_name = scenario.name.delete('(', '')
    scenario_name = scenario.name.delete(')', '')
    scenario_name = scenario.name.delete('#', '')
  
    # se o cenario falhar ele vai chamar o metodo take passando
    # dois parametros o nome do cenario com nome minusculo e o resultado
  
    if scenario.failed?
      take_screenshot(scenario_name, 'failed')
    else
      take_screenshot(scenario_name, 'passed')
    end
  end