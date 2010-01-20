require File.dirname(__FILE__) + '/../test_helper'
class BayesianTest < Test::Unit::TestCase
  def setup
    @classifier = Classifier::Bayes.new 'Interesting', 'Uninteresting'
  end
  
  def test_good_training
    assert_nothing_raised { @classifier.train_interesting "love" }
  end

  def test_bad_training
    assert_raise(StandardError) { @classifier.train_no_category "words" }
  end
  
  def test_method_missing_calls_super
    assert_raise(NoMethodError) { @classifier.forget_everything_you_know "" }
  end
  
  def test_categories
    assert_equal ['Interesting', 'Uninteresting'].sort, @classifier.categories.sort
  end

  def test_add_category
    @classifier.add_category 'Test'
    assert_equal ['Test', 'Interesting', 'Uninteresting'].sort, @classifier.categories.sort
  end

  def test_classification
    @classifier.train_interesting "here are some good words. I hope you love them"
    @classifier.train_uninteresting "here are some bad words, I hate you"
    assert_equal 'Uninteresting', @classifier.classify("I hate bad words and you")
  end

  def test_classifications
    @classifier.train_interesting "here are some good words. I hope you love them"
    @classifier.train_uninteresting "here are some bad words, I hate you"

    assert_equal ['Uninteresting', 'Interesting'].sort, @classifier.classifications("I hate bad words and you").keys.sort
    assert_in_delta -4.1588, @classifier.classifications("I hate bad words and you")['Uninteresting'], 0.0001
    assert_in_delta -9.9804, @classifier.classifications("I hate bad words and you")['Interesting'], 0.0001
  end


end
