require 'spec_helper_acceptance'
describe 'tasks' do
  it 'when restarting agent ' do
    run_shell('/opt/puppetlabs/bin/puppet config set runinterval 5')
    result = run_bolt_task('support_tasks::st0346a_bash_herd_resolver')
    expect(result.stdout).to contain(%r{success})
  end
end
