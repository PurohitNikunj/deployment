class Product < ApplicationRecord
    after_create do
        @change = 0
        GuestsCleanupJob.set(wait: 1.minutes).perform_later(self, @change)
    end

    after_update do
        if title_previously_changed?
            @change = 1
            GuestsCleanupJob.set(wait: 1.minutes).perform_later(self, @change)
        end
    end
end
