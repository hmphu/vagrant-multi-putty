module VagrantMultiPutty
  class PuttyConfig < Vagrant.plugin(2, :config)
    attr_accessor :username
    attr_accessor :private_key_path
    attr_accessor :modal

    def initialize
      @username = UNSET_VALUE
      @private_key_path = UNSET_VALUE
      @modal = false
    end

    def finalize!
      @username = nil if @username == UNSET_VALUE
      @private_key_path = nil if @private_key_path == UNSET_VALUE
    end
  end
end
