require 'rails_helper'

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "assotiations" do
    it { should have_many :comments }
  end
end

describe Article do
  describe "#subject" do
    it "returns the article title" do
      article = create(:article, title: 'Foo Bar')

      expect(article.subject).to  eq 'Foo Bar'
    end
  end
end

describe Article do
  describe "#last_comment" do
    it "returns the last comment" do

    end
  end
end

describe Article do
  describe "#last_comment" do
    it "returns the last comment" do
      article = create(:article_with_comments)

      expect(article.last_comment.body).to eq "Comment body 3"
    end
  end
end
