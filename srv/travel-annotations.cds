using {travel} from './travel-service';

annotate travel.Destinations with  @(
    Common       : {Label : '{i18n>Destinations}'},
    UI           : {
        LineItem  : [
            {Value: description, Label: 'Test'},
            {Value: city, Label: '{i18n>City}'}
        ],
    }
);