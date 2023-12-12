using {app.elearning as myelearning} from '../db/elearning';

service eLearningService {

    entity Categories as projection on myelearning.Categories;

    entity Courses as projection on myelearning.Courses;
    

}