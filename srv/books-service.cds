using { books as bs} from '../db/schema';

@path: '/srv/bookshop'

service BooksService {

    entity Books @(restrict: [
        {
            grant: [
                'READ',
                'POST',
                'PUT',
                'PATCH'
            ],
            to   : 'Admin'
        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ])     


     as projection on bs.Books;
     annotate Books with @odata.draft.enabled;

    entity Authors @(restrict: [
        {
            grant: '*',
            to   : 'Admin'
        },
        {
            grant: ['READ'],
            to   : 'Viewer'
        }
    ])                     
    
    as projection on bs.Authors;
    annotate Authors with @odata.draft.enabled;
    
}