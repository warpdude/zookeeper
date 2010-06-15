module ZookeeperACLs
  class Id
    attr_reader :scheme, :id
    def initialize(hash)
      @scheme = hash[:scheme]
      @id = hash[:id]
    end
  end
    
  class ACL
    attr_reader :perms, :id
    def initialize(hash)
      @perms = hash[:perms]
      @id = hash[:id]
    end
  end
  
  ZOO_PERM_READ   = 0
  ZOO_PERM_WRITE  = 1
  ZOO_PERM_CREATE = 2
  ZOO_PERM_DELETE = 4
  ZOO_PERM_ADMIN  = 8
  ZOO_PERM_ALL    = ZOO_PERM_READ | ZOO_PERM_WRITE | ZOO_PERM_CREATE | ZOO_PERM_DELETE | ZOO_PERM_ADMIN
  
  ZOO_ANYONE_ID_UNSAFE = Id.new(:scheme => "world", :id => "anyone")
  ZOO_AUTH_IDS         = Id.new(:scheme => "auth", :id => "")

  ZOO_OPEN_ACL_UNSAFE  = [ACL.new(:perms => ZOO_PERM_ALL,  :id => ZOO_ANYONE_ID_UNSAFE)]
  ZOO_READ_ACL_UNSAFE  = [ACL.new(:perms => ZOO_PERM_READ, :id => ZOO_ANYONE_ID_UNSAFE)]
  ZOO_CREATOR_ALL_ACL  = [ACL.new(:perms => ZOO_PERM_ALL,  :id => ZOO_AUTH_IDS)]
end