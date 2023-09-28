import 'package:adv_project/modals/quiz_question.dart';

var questions = [
       const QuizQuestion('What are the main building blocks of Flutter UIs?',
               [
                 'Widgets',
                 'Components',
                 'Blocks',
                 'Functions'

               ],
       ),
       const QuizQuestion('How are Flutter UIs built?',
              [
                 'By combining widgets in code',
                 'By combining widgets in visual editor',
                 'By defining widgets in config file',
                 'By using Xcode for ios and Android studio for Android',
              ]
       ),

  const QuizQuestion('Whats the purpose of Stateful widget',
      [
        'Update UI as data change',
        'Update data as UI change',
        'Ignore data changes',
        'Render UI that does not change data',
      ]
  ),
  const QuizQuestion('What widget should you try to use more often: Stateless widget or Stateful widget?',
     [
       'Stateless widget',
       'Stateful widget',
       'Both are equal',
       'None of the above',

     ]
  ),
  const QuizQuestion('What happens if you change data in a Stateless widget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest Stateful widget is updated',
      'Any nested Stateful widget are updated',
    ]
  ),
  const QuizQuestion('HOW should update data in stateful widget?',
    [
      'By calling setstate()',
      'By calling updatedata()',
      'By calling updateUI()',
      'By calling updatestate()',
    ]


  ),
];