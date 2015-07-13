authorization do
    role :teacher do
        # ROLES
        has_permission_on [:homeworks], :to => [:manage]
        has_permission_on [:students], :to => [:manage]
        has_permission_on [:admin_students], :to => [:manage, :search]
        has_permission_on [:admin_users], :to => [:manage]
        has_permission_on [:admin_pages], :to => [:manage]
    end

    role :student do
        # ROLES
        has_permission_on [:homeworks], :to => [:manage]
        has_permission_on [:students], :to => [:manage]
    end


    role :guest do
        # ROLES
        has_permission_on [:pages], :to => [:read]
    end
end

privileges do
    privilege :manage, :includes => [:index, :show, :new, :create, :edit, :update, :destroy]
    privilege :read,   :includes => [:index, :show]
    privilege :create, :includes => [:new]
    privilege :update, :includes => [:edit]
    privilege :delete, :includes => [:destroy]
end