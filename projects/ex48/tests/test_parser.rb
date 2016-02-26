require "./lib/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase
  def testSentence
    p = parse_sentence([['verb', 'run'], ['direction', 'north']])
    s = Sentence.new(['noun', 'player'], ['verb', 'run'], ['direction', 'north'])
    assert_equal(p.verb, s.verb)
    assert_equal(p.object, s.object)
    assert_equal(p.subject, s.subject)

  end
  
  def testRaise
    assert_raise do
      parse_subject(['noun', 'bear'])
    end
  end
end