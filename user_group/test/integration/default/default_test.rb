# InSpec test for recipe user_group::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  describe user('bob') do
    it { should exist }
  end
  describe group('chefusers') do
    it { should exist }
  end
  describe file('/tmp/cheftemp/chef.txt') do
    it { should exist }
  end
end
