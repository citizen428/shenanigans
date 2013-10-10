require 'ostruct'

class Hash
  # Recursively converts a <tt>Hash</tt> and all nested <tt>Hash</tt>es to
  # <tt>OpenStruct</tt>s. Especially useful for parsing YAML.
  #     yaml=<<EOY
  #     subject: Programming Languages
  #     languages:
  #       - name        : Ruby
  #         creator     : Matz
  #       - name        : Python
  #         creator     : Guido van Rossum
  #       - name        : Perl
  #         creator     : Larry Wall
  #     EOY
  #     struct = YAML.load(yaml).to_ostruct
  #     struct.subject
  #     #=> "Programming Languages"
  #     struct.languages.first
  #     #=> #<OpenStruct name="Ruby", creator="Matz">
  #     struct.languages.first.creator
  #     #=> "Matz"
  def to_ostruct
    arr = map do |k, v|
      case v
      when Hash
        [k, v.to_ostruct]
      when Array
        [k, v.map { |el| el.respond_to?(:to_ostruct) ? el.to_ostruct : el }]
      else
        [k, v]
      end
    end
    OpenStruct.new(Hash[arr])
  end
end
