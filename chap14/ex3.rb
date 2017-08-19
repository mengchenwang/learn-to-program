# Program logger
def logger block_description, &block
 puts "Beginning #{block_description}..."
 returned = block.call
 puts "...#{block_description} finished, returning:" +
      "#{returned}"
end

logger 'outer block' do
  logger 'some little block' do
    2 + 3
  end
  logger 'yet another block' do
      'I like Thai food!'
  end
  false
end
