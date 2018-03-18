require 'spec_helper'
describe 'proxmox5' do

  context 'with defaults for all parameters' do
    it { should contain_class('proxmox5') }
  end
end
