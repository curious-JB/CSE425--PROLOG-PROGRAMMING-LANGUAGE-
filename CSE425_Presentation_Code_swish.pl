% ===========================================================================================================================


% CSE425 PRESENTATION CODE
% GROUP: 06
% SECTION: 03
% PURPOSE OF THE CODE: A symbolic reasoning system that evaluates Prolog through logical inference.




% NOTE:
% This is a simple Prolog code for basic self-evaluation. It is only to demonstrate the logical inference of Prolog.
% This is nowhere near a robust self-evaluation system. It certainly lacks some of the advanced aspects, like:
% Lack of Dynamic Input Capability, No Weighting of Traits/Properties, No Error Handling feature, etc.
% So, treat this code as a beginner's project.
% Moreover, it is a singleton project file, meaning all the parts or sections of the project code are in this single file.


% ==========================================================================================================================




% =============================================================================
% START OF THE CODE
% =============================================================================






% ---------------------------------------------------------------------------------------------------------------------
% SECTION 1 - FOUNDATIONAL TRAITS - The atomic facts about Prolog's characteristics


% DESCRIPTION: In this section of the code, we have provided all the fundamental characteristics of Prolog as 'traits'
% ---------------------------------------------------------------------------------------------------------------------




trait(declarative).
trait(logic_programming).
trait(rule_based).
trait(pattern_matching).
trait(unification).
trait(backtracking).
trait(depth_first_search).
trait(non_deterministic).
trait(goal_oriented).
trait(compact_syntax).
trait(minimal_punctuation).
trait(fact_rule_structure).
trait(horn_clauses).
trait(steep_learning_curve).
trait(non_procedural).
trait(mathematical_foundation).
trait(academic_origins).
trait(interpreted_execution).
trait(dynamic_typing).
trait(garbage_collection).
trait(memory_intensive).
trait(symbolic_computation).
trait(constraint_handling).
trait(expert_systems_friendly).




% --------------------------------------------------------------------------------------------------------
% SECTION 2 - FORMING PROPERTIES - Derived concepts from basic traits


% DESCRIPTION: In this section of the code,
% we have used the atomic traits to form the features of Prolog
% --------------------------------------------------------------------------------------------------------




has_property(symbolic_reasoning) :-
    trait(declarative),
    trait(logic_programming),
    trait(pattern_matching).




has_property(automatic_search) :-
    trait(backtracking),
    trait(non_deterministic),
    trait(goal_oriented).




has_property(expressive_power) :-
    trait(rule_based),
    trait(unification),
    trait(horn_clauses).




has_property(concise_code) :-
    trait(compact_syntax),
    trait(minimal_punctuation),
    trait(fact_rule_structure).




has_property(natural_problem_modeling) :-
    trait(declarative),
    trait(rule_based),
    trait(mathematical_foundation).




has_property(domain_specific_strength) :-
    trait(symbolic_computation),
    trait(constraint_handling),
    trait(expert_systems_friendly).




has_property(paradigm_shift_required) :-
    trait(non_procedural),
    trait(steep_learning_curve),
    trait(mathematical_foundation).




has_property(debugging_complexity) :-
    trait(backtracking),
    trait(non_deterministic),
    trait(depth_first_search).




has_property(execution_overhead) :-
    trait(interpreted_execution),
    trait(backtracking),
    trait(memory_intensive).




has_property(predictable_behavior) :-
    trait(rule_based),
    trait(declarative),
    trait(mathematical_foundation).




has_property(flexible_data_handling) :-
    trait(dynamic_typing),
    trait(unification),
    trait(pattern_matching).




% ------------------------------------------------------------------------------------------------
% SECTION 3 - IMPACT CLASSIFICATION - positive/negative effects


% DESCRIPTION: In this section of the code, we have divided our derived properties into two parts:
% One is for the positive impact, and the other one is for the negative impact
% ------------------------------------------------------------------------------------------------




% Properties with positive impact
impact(symbolic_reasoning, positive).
impact(automatic_search, positive).
impact(expressive_power, positive).
impact(concise_code, positive).
impact(natural_problem_modeling, positive).
impact(domain_specific_strength, positive).
impact(predictable_behavior, positive).
impact(flexible_data_handling, positive).




% Properties with negative impact
impact(paradigm_shift_required, negative).
impact(debugging_complexity, negative).
impact(execution_overhead, negative).








% ----------------------------------------------------------------------------------------------------------------------------------------
% SECTION 4 - SETTING UP THE LOGIC FOR A RATING SYSTEM - To rate the properties and impact to determine the advantages and disadvantages,
% and also to evaluate Prolog on the 4 metrics.


% DESCRIPTION:
% In this section of the code, we have defined the logic to determine,
% the advantages and disadvantages of using the properties and impacts. Here,
% Advantages consist of properties with a  positive impact and
% disadvantages consist of properties with a negative impact
% based on the derived properties, advantages and disadvantages, we have built a rating system,
% where the system will score the effect of these on readability, writability, reliability and execution cost.
% Here in this rating system, the base score is set to 5.
% If there is any property that is associated with a negative impact and disadvantage, the base score will be decremented by 1,
% and for the positive property and advantages, the base score will be incremented by 1.  
% ----------------------------------------------------------------------------------------------------------------------------------------


advantage(Property) :-
    has_property(Property),
    impact(Property, positive).


disadvantage(Property) :-
    has_property(Property),
    impact(Property, negative).






evaluation(readability, Score, Comment) :-
    findall(P, (advantage(P), affects_readability(P, positive)), PosProps),
    findall(P, (disadvantage(P), affects_readability(P, negative)), NegProps),
    length(PosProps, PosCount),
    length(NegProps, NegCount),
    BaseScore is 5 + PosCount - NegCount,
    Score is max(1, min(10, BaseScore)),
    format_comment(readability, Score, Comment).




evaluation(writability, Score, Comment) :-
    findall(P, (advantage(P), affects_writability(P, positive)), PosProps),
    findall(P, (disadvantage(P), affects_writability(P, negative)), NegProps),
    length(PosProps, PosCount),
    length(NegProps, NegCount),
    BaseScore is 5 + PosCount - NegCount,
    Score is max(1, min(10, BaseScore)),
    format_comment(writability, Score, Comment).




evaluation(reliability, Score, Comment) :-
    findall(P, (advantage(P), affects_reliability(P, positive)), PosProps),
    findall(P, (disadvantage(P), affects_reliability(P, negative)), NegProps),
    length(PosProps, PosCount),
    length(NegProps, NegCount),
    BaseScore is 5 + PosCount - NegCount,
    Score is max(1, min(10, BaseScore)),
    format_comment(reliability, Score, Comment).




evaluation(execution_cost, Score, Comment) :-
    findall(P, (advantage(P), affects_execution_cost(P, positive)), PosProps),
    findall(P, (disadvantage(P), affects_execution_cost(P, negative)), NegProps),
    length(PosProps, PosCount),
    length(NegProps, NegCount),
    BaseScore is 5 + PosCount - NegCount,
    Score is max(1, min(10, BaseScore)),
    format_comment(execution_cost, Score, Comment).






% ----------------------------------------------------------------------------------------------------------------------------------
% SECTION 5 - PROPERTY-METRIC RELATIONSHIPS - Determining which properties affect which metrics


% DESCRIPTION: In this section of the code, we are determining the properties that will contribute to evaluate the Prolog language,
% based on the 4 metrics- Readablilty, Writability, Reliability and Execution Cost.
% ----------------------------------------------------------------------------------------------------------------------------------




% Properties affecting readability
affects_readability(concise_code, positive).
affects_readability(natural_problem_modeling, positive).
affects_readability(expressive_power, positive).
affects_readability(paradigm_shift_required, negative).




% Properties affecting writability
affects_writability(concise_code, positive).
affects_writability(natural_problem_modeling, positive).
affects_writability(automatic_search, positive).
affects_writability(flexible_data_handling, positive).
affects_writability(paradigm_shift_required, negative).




% Properties affecting reliability
affects_reliability(predictable_behavior, positive).
affects_reliability(expressive_power, positive).
affects_reliability(symbolic_reasoning, positive).
affects_reliability(debugging_complexity, negative).




% Properties affecting execution cost
affects_execution_cost(automatic_search, positive).
affects_execution_cost(execution_overhead, negative).




% -------------------------------------------------------------------------------------------------------------------------------
% SECTION 6 - SETTING UP A SCORE DISTRIBUTION MODEL FOR THE EVALUATION - Providing score with comment.


% DESCRIPTION: In this section of the code, we have a score distribution model to evaluate the PROLOG language.
% Here, our rating system will provide us with a score and then the score will be compared and categorized.
% If the score is 8 or above, there will be a comment for that, if it is between 6 or 7, a different comment will be assigned."
% Similar for the score 4 to 5 and below that, there will be different comments for them.
% And this score distribution and specialized comment will be assigned for all 4 metrics.
% -------------------------------------------------------------------------------------------------------------------------------




format_comment(readability, Score, Comment) :-
    number(Score),  
    (Score >= 8 -> Comment = 'Excellent - Very clear and expressive syntax'
    ; Score >= 6 -> Comment = 'Good - Generally readable with some complexity'
    ; Score >= 4 -> Comment = 'Fair - Requires domain knowledge to understand'
    ; Comment = 'Poor - Difficult to read for most programmers').




format_comment(writability, Score, Comment) :-
    number(Score),
    (Score >= 8 -> Comment = 'Excellent - Concise and natural problem expression'
    ; Score >= 6 -> Comment = 'Good - Efficient coding with learning curve'
    ; Score >= 4 -> Comment = 'Fair - Requires paradigm shift but rewarding'
    ; Comment = 'Poor - Very challenging for new programmers').




format_comment(reliability, Score, Comment) :-
    number(Score),  
    (Score >= 8 -> Comment = 'Excellent - Mathematical foundation ensures correctness'
    ; Score >= 6 -> Comment = 'Good - Reliable but debugging can be complex'
    ; Score >= 4 -> Comment = 'Fair - Generally reliable with some gotchas'
    ; Comment = 'Poor - Unpredictable behavior in complex scenarios').




format_comment(execution_cost, Score, Comment) :-
    number(Score),
    (Score >= 8 -> Comment = 'Excellent - Efficient for appropriate problem domains'
    ; Score >= 6 -> Comment = 'Good - Reasonable performance with optimization'
    ; Score >= 4 -> Comment = 'Fair - Some overhead but acceptable for logic tasks'
    ; Comment = 'Poor - Significant performance limitations').






% --------------------------------------------------------------------------------------------------------------------
% SECTION 7 - DISPLAYING OUTPUTS - User interface for displaying results


% DESCRIPTION: In this section of the code, we have displayed the outputs based on the scores from the rating system
% --------------------------------------------------------------------------------------------------------------------




show_advantages :-
    write('=============== PROLOG ADVANTAGES ==============='), nl,
    findall(Adv, advantage(Adv), Advantages),
    (Advantages = [] ->
        write('• No advantages found through logical inference.'), nl
    ;
        forall(member(A, Advantages),
               (write('• '), write_advantage_description(A), nl))
    ),
    nl.




show_disadvantages :-
    write('=============== PROLOG DISADVANTAGES ==============='), nl,
    findall(Dis, disadvantage(Dis), Disadvantages),
    (Disadvantages = [] ->
        write('• No disadvantages found through logical inference.'), nl
    ;
        forall(member(D, Disadvantages),
               (write('• '), write_disadvantage_description(D), nl))
    ),
    nl.




show_evaluation :-
    write('=== PROLOG SELF-EVALUATION ==='), nl,
    write('_____Metric________|_Score__|______________________Comment________________________'), nl,
    write('------------------------------|-------------|------------------------------------------------------------------------------------------'), nl,
    MetricOrder = [readability, writability, reliability, execution_cost],
    forall(member(Metric, MetricOrder),
           (evaluation(Metric, Score, Comment),
            format(' ~w~t~15|   | ~w/10  | ~w~n', [Metric, Score, Comment]))),
    nl.




% --------------------------------------------------------------------------------------------------------------------------------------------------
% SECTION 8 - DESCRIPTION OF ADVANTAGES AND DISADVANTAGES - Manually describing the advantages and disadvantages


% DESCRIPTION: In this section of the code, we have provided some description of advantages and disadvantages, which will be displayed as the output.
% This manual description is to provide a more readable and understandable list of advantages and disadvantages,
% rather than the extremely concise and to-the-point property description.  
% --------------------------------------------------------------------------------------------------------------------------------------------------




write_advantage_description(symbolic_reasoning) :-
    write('Excellent symbolic reasoning and logical inference capabilities').
write_advantage_description(automatic_search) :-
    write('Built-in automatic search through backtracking mechanism').
write_advantage_description(expressive_power) :-
    write('High expressive power for complex logical relationships').
write_advantage_description(concise_code) :-
    write('Very concise and readable code structure').
write_advantage_description(natural_problem_modeling) :-
    write('Natural way to model rule-based and logical problems').
write_advantage_description(domain_specific_strength) :-
    write('Strong performance in AI, expert systems, and symbolic domains').
write_advantage_description(predictable_behavior) :-
    write('Predictable behavior based on mathematical logic foundation').
write_advantage_description(flexible_data_handling) :-
    write('Flexible data handling through unification and pattern matching').






write_disadvantage_description(paradigm_shift_required) :-
    write('Requires significant paradigm shift from procedural thinking').
write_disadvantage_description(debugging_complexity) :-
    write('Debugging can be complex due to backtracking and non-determinism').
write_disadvantage_description(execution_overhead) :-
    write('Performance overhead from interpretation and backtracking').






% ------------------------------------------------------------------------------------------------
% SECTION 9 - COUNTING UTILITY - Helper functions for counting


% DESCRIPTION: In this section of the code, we have counted the total traits defined in the system,
% and also counted the number of derived properties.
% ------------------------------------------------------------------------------------------------


count_traits(Count) :-
    findall(T, trait(T), Traits),
    length(Traits, Count).


count_properties(Count) :-
    findall(P, has_property(P), Properties),
    length(Properties, Count).




% ---------------------------------------------------------------------------------------------------------------------------------------
% SECTION 10 - DISPLAY THE STATISTICS - Show the analysed statistics
%
% DESCRIPTION: In this section of the code, we have provided a summary of the states related to total traits and derived property count.
% Also, the number of advantages and disadvantages found.
% ---------------------------------------------------------------------------------------------------------------------------------------




% The analyzed statistics
show_stats :-
    write('=== SHOWING ANALYSISED STATISTICS ==='), nl,
    count_traits(TraitCount),
    count_properties(PropCount),
    findall(A, advantage(A), Advantages),
    findall(D, disadvantage(D), Disadvantages),
    length(Advantages, AdvCount),
    length(Disadvantages, DisCount),
    format('• Total Traits Defined: ~w~n', [TraitCount]),
    format('• Derived Properties: ~w~n', [PropCount]),
    format('• Advantages Found: ~w~n', [AdvCount]),
    format('• Disadvantages Found: ~w~n', [DisCount]),
    nl.


% Display the output
demo :-
    show_advantages,
    show_disadvantages,
    show_evaluation,
    show_stats.




% =============================================================================
% END OF THE CODE
% =============================================================================


