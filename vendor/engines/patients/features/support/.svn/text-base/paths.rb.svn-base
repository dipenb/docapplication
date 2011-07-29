module NavigationHelpers
  module Refinery
    module Patients
      def path_to(page_name)
        case page_name
        when /the list of patients/
          admin_patients_path

         when /the new patient form/
          new_admin_patient_path
        else
          nil
        end
      end
    end
  end
end
