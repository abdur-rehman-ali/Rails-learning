class User < ApplicationRecord
    validates :name, presence:true

    before_validation :test_before_validation
    after_validation :test_after_validation

    before_save :test_before_save
    # (Around save:when you want to invoke the action itself, you yield to it, then continue execution)
    around_save :test_around_save
    after_save :test_after_save

    before_create :test_before_create
    after_create :test_after_create

    before_destroy :test_before_destroy
    after_destroy :test_after_destroy

    before_update :test_before_update
    after_update :test_after_update

    after_initialize :test_after_initialize
    after_find :test_after_find

    private 

        def test_after_initialize
            puts "initialze called ..."
        end

        def test_after_find
            puts "find called ..."
        end

        def test_before_validation
            puts "Called before validations #{name}"
            self.name = name.upcase_first if name!=nil
        end

        def test_after_validation
            puts "Called after validations #{name}"
        end

        def test_before_save
            puts "Called before save #{name}"
        end

        def test_after_save
            puts "Called after save #{name}"
        end

        def test_around_save
            puts "Called around save #{name}"
            puts "inside around"
            yield
            puts "outside around"
        end

        def test_before_create
            puts "Before create called #{name}"
        end

        def test_after_create
            puts "After create called #{name}"
        end

        def test_before_destroy
            puts "Before destroy called #{name}"
        end

        def test_after_destroy
            puts "After destroy called #{name}"
        end

        def test_before_update
            puts "Before update called #{name}"
        end

        def test_after_update
            puts "After update called #{name}"
        end
end
