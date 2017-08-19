# Better program logger
$depth = 0

def logger block_description, &block
 puts " "*$depth + "Beginning #{block_description}..."
 $depth += 1
 returned = block.call
 $depth -= 1
 puts " "*$depth + "...#{block_description} finished, returning:\n" +
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
