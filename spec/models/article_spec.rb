require 'spec_helper'

RSpec.describe Article, type: :model do
  describe "associations" do
    it { should have_many :comments }
  end
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  
  describe "#subject" do
    let(:article) { create(:article, title: 'Lorem ipsum') }
      it "returns the article title" do
          expect(article.subject).to eq 'Lorem ipsum'
      end
  end
end