require 'highwinds-api'

describe HighwindsAPI do
  let(:config) { YAML.load_file('spec/config.yml') }

  it "set credentials" do
    username = "user"
    password = "pass"
    subject.set_credentials(username, password)
    subject.credentials.should eq({ username: username, password: password })
  end

  it "get token" do
    subject.set_credentials(config["username"], config["password"])
    expect(subject.get_token.length).to be  >= 20
  end

  it "get token snd time to be the same as first one" do
    subject.set_credentials(config["username"], config["password"])
    old_token = subject.get_token
    new_token = subject.get_token
    expect(new_token).to be(old_token)
  end


  it "autoloads ::Content" do
    # subject.autoload?(:Content).should eq("highwinds-api/content")
    subject::Content.should eq(HighwindsAPI::Content)
  end
end