import 'package:flutter/material.dart';
import 'package:stayfit_app/models/exercise.dart';
import 'package:stayfit_app/pages/selectedexercisepage.dart';
import '../models/exercisedetails.dart';
import '../models/subexercise.dart';

class Utils {
  static List<Exercise> getMockedExercises() {
    return [
      Exercise(
        color: const Color(0xFF000000),
        name: "Chest",
        imgName: "cat1",
        exerciseDetailsList: [],
        subExercises: [
          SubExercise(
            color: const Color(0xFF000000),
            name: "Spartan Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description:
                    """Step 1. Start with simple push ups position, arms straight, now place your both hands wider than shoulder width apart, Now place your right hand in alignment of your middle chest and left hand in alignment of your shoulder. It is your starting position.

Step 2. Now bend your elbows and push your chest down toward floor.

Step 3. Now force your arms and jump up, when jump up straight way place your left hand in alignment of your middle chest and right hand in alignment of your shoulder.

Step 4. Repeat the same for complete the set.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
          SubExercise(
            color: const Color(0xFF000000),
            name: "Chest Stretching Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description: """Step 1. Get into a push-up position.

Step 2. Lower your chest to the ground while keeping your elbows tucked in.

Step 3. Push back up and stretch one arm in front of you, rotating your torso towards that side.

Step 4. Repeat on the other side and alternate between both sides.

Hint: Remember to keep your movements slow and controlled, and focus on engaging your chest muscles as you perform the push-up and stretch.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
          SubExercise(
            color: const Color(0xFF000000),
            name: "Hands On Bench Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description:
                    """Step 1. Find a sturdy bench or elevated surface that can support your weight.

Step 2. Place your hands shoulder-width apart on the bench with your fingers pointing forward.

Step 3. Step your feet back into a plank position, with your body in a straight line from your head to your heels.

Step 4. Lower your chest towards the bench, keeping your elbows close to your body.

Step 5. Push yourself back up to the starting position, keeping your core engaged and your body in a straight line.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
          SubExercise(
            color: const Color(0xFF000000),
            name: "Jump Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description:
                    """Step 1. Start in a plank position with your hands shoulder-width apart and your feet hip-width apart.

Step 2. Lower your body down towards the ground by bending your elbows.

Step 3. Push yourself back up explosively and jump both of your hands and feet off the ground at the same time.

Step 4. Land back in the plank position with your hands and feet on the ground.

Step 5. Repeat the push-up and jump movement for the desired number of repetitions.

Hint: It's important to engage your core muscles and maintain a straight line from your head to your heels throughout the movement to avoid injury. Additionally, you should aim to land softly to minimize the impact on your joints.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
          SubExercise(
            color: const Color(0xFF000000),
            name: "Feet On Bench Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description:
                    """Step 1. Find a sturdy bench or elevated surface that can support your weight.

Step 2. Assume a push-up position with your feet on top of the bench and your hands on the ground shoulder-width apart. Your body should be in a straight line from your head to your heels.

Step 3.Lower your body down towards the ground by bending your elbows.

Step 4. Push yourself back up to the starting position, keeping your core engaged and your body in a straight line.

Step 5. Repeat the movement for the desired number of repetitions.

Hint: Performing push-ups with your feet elevated on a bench adds extra difficulty to the exercise, as it requires more upper body strength and engages your core muscles even more. Make sure to maintain proper form throughout the movement to avoid injury.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
          SubExercise(
            color: const Color(0xFF000000),
            name: "Side to Side Push Up",
            imgName: " ",
            subExercises: [],
            exerciseDetailsList: [
              ExerciseDetails(
                color: const Color(0xFF000000),
                name: "",
                imgName: "",
                subExercises: [],
                description:
                    """Step 1. Start in a traditional push-up position, with your hands shoulder-width apart and your feet hip-width apart.

Step 2. Lower your chest down towards the ground by bending your elbows.

Step 3. Push yourself back up to the starting position.

Step 4. Shift your weight to one hand and move that hand a few inches towards the center of your body.

Step 5. Lower your chest down towards the ground again by bending your elbows.

Step 6. Push yourself back up to the starting position, then shift your weight to the other hand and move it towards the center of your body.

Step 7. Lower your chest down towards the ground again by bending your elbows.

Step 8. Push yourself back up to the starting position, and continue alternating side-to-side for the desired number of repetitions.""",
                exerciseDetailsList: [],
              ),
            ],
          ),
        ],
      ),
      Exercise(
          color: const Color(0xFF000000),
          name: "Biceps, Triceps - Shoulder",
          imgName: "cat2",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Arm Raises",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand straight with your feet shoulder-width apart and your arms hanging down by your sides.

Step 2. Slowly raise your right arm out to the side, keeping your elbow straight and your palm facing down.

Step 3. Keep lifting your arm until it is parallel to the ground or until you feel a stretch in your shoulder.

Step 4. Hold this position for a few seconds, then slowly lower your arm back to the starting position.

Step 5. Repeat the same movement with your left arm.

Step 6. Alternate between your right and left arms for the desired number of repetitions.

Hint: Make sure to keep your shoulders down and avoid shrugging them up towards your ears during the exercise.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Dips",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Find a sturdy chair or bench and sit on the edge of it with your hands placed next to your hips, palms down and fingers pointing forward.

Step 2. Slowly slide your hips off the chair while keeping your hands in place, and walk your feet forward a few steps so that your knees are bent at a 90-degree angle and your arms are straight.

Step 3. Slowly lower your body by bending your elbows, keeping them close to your body, until your upper arms are parallel to the ground.

Step 4. Push through your palms to lift your body back up to the starting position, straightening your elbows.

Step 5. Repeat the movement for a desired number of reps, making sure to keep your core engaged and your shoulders down throughout the exercise.

Hint: As you progress, you can make the exercise more challenging by extending your legs further forward or by using a lower chair or bench.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Barbell Curl",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand upright with your feet shoulder-width apart.

Step 2. Hold your arms straight and hanging by your sides.

Step 3. Bend your knee and bring your heel up towards your glutes.

Step 4. Hold for a few seconds before slowly straightening your leg.

Step 5. Repeat for all reps and then switch to the other leg.

Hint: This exercise is not as effective as barbell curls as it does not involve the use of weights. However, it is a simple exercise that can be done at home and can help to work your leg muscles.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Burpees",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Start in a standing position with your feet shoulder-width apart.

Step 2. Lower your body into a squat position, placing your hands on the ground in front of you.

Step 3. Jump your feet back into a plank position.

Step 4. Lower your chest and thighs to the ground, keeping your elbows close to your body.

Step 5. Push up into a plank position and jump your feet back towards your hands.

Step 6. Stand up and jump explosively into the air, raising your arms above your head.

Hint: Repeat this sequence for several repetitions, taking breaks as needed. This exercise is great for improving cardiovascular fitness, building strength, and burning calories.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Diagonal Plank",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Begin in a high plank position with your hands directly under your shoulders and your body forming a straight line from your head to your heels.

Step 2. Engage your core muscles and lift your right arm and left leg off the ground simultaneously.

Step 3. Rotate your body to the right side, pivoting on your left foot, and bring your right arm towards the ceiling.

Step 4. Hold this position for a few seconds, then lower your arm and leg back down to the starting position.

Step 5. Repeat the movement on the other side by lifting your left arm and right leg, rotating your body to the left side, and reaching your left arm towards the ceiling.

Step 6. Continue alternating sides for a desired number of repetitions or time.

Hint: Remember to keep your core muscles engaged throughout the exercise and to maintain proper form with a straight line from head to heels.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Push-Ups",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand facing a wall, about an arm's length away.

Step 2. Place your hands on the wall, slightly wider than shoulder-width apart, with your fingers pointing upwards.

Step 3. Step back so that your arms are straight and your body is at a slight angle.

Step 4. Engage your core and inhale as you bend your elbows, bringing your chest towards the wall.

Step 5. Exhale as you push away from the wall, straightening your arms.

Step 6. Repeat for a desired number of reps.

Hint: If you find this exercise too easy, you can increase the difficulty by stepping further away from the wall or doing the exercise on a lower surface, such as a table or bench.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
          ]),
      Exercise(
          color: const Color(0xFF000000),
          name: "Back",
          imgName: "cat3",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Superman",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down on your stomach with your arms and legs extended straight out.

Step 2. Contract your back muscles and lift your chest, arms, and legs off the ground simultaneously.

Step 3. Hold this position for 2-3 seconds, then slowly lower yourself back down to the starting position.

Step 4. Repeat this movement for a total of 10-15 repetitions.

Step 5. To make the exercise more challenging, hold the lifted position for a longer period of time or increase the number of repetitions.

Step 6. Remember to engage your core muscles throughout the exercise to maintain stability and protect your lower back.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hover Push-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Assume a high plank position with your hands placed slightly wider than shoulder-width apart and your feet together.

Step 2. Engage your core, glutes, and quads to maintain a straight line from your head to your heels.

Step 3. Lower your body down toward the ground while keeping your elbows tucked close to your sides.

Step 4. Hover your body a few inches above the ground for a second or two before pushing back up to the starting position.

Step 5. Repeat the exercise for the desired number of reps, making sure to maintain proper form throughout.

Hint: Rest for 30-60 seconds between sets, and aim to gradually increase the number of reps or sets over time to challenge yourself.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Bird Dog",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Start on your hands and knees with your wrists directly under your shoulders and your knees under your hips.

Step 2. Engage your core and lift your right arm and left leg off the ground, keeping them straight.

Step 3. Hold for a few seconds, then lower your arm and leg back down to the starting position.

Step 4. Repeat with your left arm and right leg.

Step 5. Make sure to keep your spine neutral and avoid arching or rounding your back.

Step 6. Aim for 10-15 reps on each side, and gradually increase the number of reps as you get stronger.

Hint: Remember to focus on good form and control throughout the movement, rather than rushing through the exercise. The Bird Dog is a great way to improve core stability and balance, even without any equipment.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hip Hinge",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet shoulder-width apart and your toes pointing forward.

Step 2. Place your hands on your hips or behind your head.

Step 3. Keeping your back straight, hinge forward at your hips as if you were trying to touch your toes.

Step 4. Allow your knees to bend slightly as you hinge forward, but keep them behind your toes.

Step 5. Stop when you feel a stretch in your hamstrings, and then slowly return to standing.

Step 6. Repeat for 10-15 reps.

Hint: Remember to keep your core engaged and your back straight throughout the exercise to maximize its effectiveness.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Body Weight Cable Row",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Find a sturdy horizontal surface to use as an anchor point, such as a table or a railing.

Step 2. Stand facing the anchor point, with your feet shoulder-width apart and your arms extended in front of you, holding onto the edge of the anchor point.

Step 3. Brace your core and pull your shoulder blades down and back.

Step 4. Bend your elbows and pull your chest towards the anchor point, keeping your elbows close to your body.

Step 5. Pause briefly at the top of the movement, squeezing your shoulder blades together.

Step 6. Slowly lower yourself back down to the starting position, keeping your core engaged and your shoulder blades pulled down and back.

Hint: Remember to keep your movements controlled and your form correct to ensure maximum benefit from the exercise.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Incline Push-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Find a sturdy elevated surface such as a bench, chair, or counter.

Step 2. Place your hands on the elevated surface slightly wider than shoulder-width apart.

Step 3. Walk your feet back until your body forms a straight line from your head to your heels.

Step 4. Engage your core muscles and lower your chest towards the elevated surface while keeping your elbows close to your body.

Step 5. Pause briefly at the bottom of the movement, then push back up to the starting position.

Hint: Remember to maintain proper form throughout the exercise, with a straight back and engaged core muscles. You can modify the difficulty of the exercise by adjusting the height of the elevated surface or by performing the push-ups on your knees if needed.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
          ]),
      Exercise(
          color: const Color(0xFF000000),
          name: "Abdomen",
          imgName: "cat4",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sit-Up",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down on your back with your knees bent and feet flat on the ground.

Step 2. Place your hands behind your head, with your elbows pointing outwards.

Step 3. Engage your core muscles and slowly lift your head, neck, and shoulders off the ground.

Step 4. Exhale as you lift your upper body and inhale as you lower it back down to the ground.

Step 5. Keep your feet planted on the ground and avoid using momentum to lift yourself up.

Step 6. Repeat the exercise for the desired number of repetitions, ensuring you maintain proper form throughout the exercise.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Leg Raise",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down flat on your back with your arms at your sides.

Step 2. Keeping your legs straight, slowly lift them up towards the ceiling, while contracting your abs to maintain stability.

Step 3. Continue lifting until your legs are at a 90-degree angle with your body or as close as you can get.

Step 4. Hold the position briefly, then slowly lower your legs back down to the starting position.

Step 5. Repeat for several sets of 10-15 repetitions.

Hint: To increase the difficulty, you can try adding ankle weights or placing your hands under your lower back for support.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Knee In",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down on your back with your legs straight.

Step 2. Bend one knee and bring it towards your chest.

Step 3. Use your hands to pull your knee closer to your chest, feeling a stretch in your hip and lower back.

Step 4. Hold this position for a few seconds, then release and switch sides.

Step 5. Repeat the movement for several reps on each leg.

Step 6. To increase the difficulty, you can add a pause at the top of the movement or hold a weight between your knees.

Hint: Remember to focus on proper form and control throughout the exercise, and consult with a healthcare professional if you have any concerns about your knee health or fitness level.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Hardstyle Plank",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down on your stomach with your elbows bent at a 90-degree angle and your forearms flat on the ground.

Step 2. Lift your body up onto your toes and forearms, keeping your body in a straight line from your head to your heels.

Step 3. Squeeze your glutes and brace your core muscles, pulling your belly button towards your spine.

Step 4. Hold the position for as long as you can, aiming for at least 20-30 seconds to start.

Step 5. Make sure to breathe steadily throughout the exercise.

Step 6. Lower your body back down to the ground and rest for 10-20 seconds before repeating for another set.

Hint: Remember to focus on keeping your body in a straight line and engaging your core and glutes for maximum benefit from this exercise!""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Crunch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie down on your back with your knees bent and your feet flat on the floor.

Step 2. Place your hands behind your head, with your elbows pointing out to the sides.

Step 3. Lift your head, neck, and shoulder blades off the floor by contracting your abdominal muscles.

Step 4. Hold this position briefly and then slowly lower yourself back down to the starting position.

Step 5. Repeat the movement for a desired number of repetitions.

Hint: Remember to keep your chin off your chest and avoid pulling on your neck with your hands.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Toe Touch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand straight with your feet shoulder-width apart and your arms at your sides.

Step 2. Take a deep breath and slowly exhale as you bend forward from your hips.

Step 3. Reach your fingers towards your toes, keeping your legs as straight as possible.

Step 4. Hold this position for 10-30 seconds, feeling a stretch in your hamstrings and lower back.

Step 5. Slowly lift back up to the starting position, inhaling as you go.

Step 6. Repeat for 10-15 reps, gradually increasing the depth of your stretch over time.

Hint: Remember to avoid jerky or sudden movements and listen to your body's limits. If you feel any pain or discomfort, stop the exercise immediately.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
          ]),
      Exercise(
          color: const Color(0xFF000000),
          name: "Legs",
          imgName: "cat5",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Prison Squat",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet shoulder-width apart and your hands behind your head.

Step 2. Lower your body by bending your knees and pushing your hips back, as if sitting in a chair.

Step 3. Keep your back straight and your chest up throughout the movement.

Step 4. Go as low as you can while maintaining proper form, ideally until your thighs are parallel to the ground.

Step 5. Pause briefly at the bottom, then push through your heels to return to the starting position.

Step 6. Repeat for desired number of reps.

Hint: If you find this too easy, you can make it more challenging by holding a water jug or other household item for added resistance.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Lunge",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Start by standing with your feet shoulder-width apart and your arms at your sides.

Step 2. Take a step forward with your right foot and lower your body until your right thigh is parallel to the ground, and your knee is directly above your ankle.

Step 3. Push off your right foot and return to your starting position.

Step 4. Repeat the lunge on your left side, stepping forward with your left foot.

Step 5. Alternate between lunging on your right and left sides for the desired number of repetitions.

Hint: Remember to keep your upper body straight and engage your core muscles to maintain balance.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Calf Raises",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet shoulder-width apart and place your hands on a wall or sturdy object for balance.

Step 2. Slowly raise up onto the balls of your feet, lifting your heels as high as you can.

Step 3. Hold this position for a few seconds, then lower your heels back down to the ground.

Step 4. Repeat the movement for several repetitions, aiming to do 3 sets of 15-20 reps.

Step 5. To make the exercise more challenging, try doing single-leg calf raises by lifting one foot off the ground and performing the exercise on the other leg.

Step 6. You can also add variations by changing the angle of your feet, such as turning your toes inward or outward, to target different parts of your calves.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Leg Circles",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Start by lying down on your side, making sure your body is in a straight line and your legs are stacked on top of each other.

Step 2. Place your bottom arm out in front of you for stability and support your head with your top arm.

Step 3. Engage your core muscles to keep your body stable, then lift your top leg up to a 45-degree angle, keeping it straight and in line with your body.

Step 4. Begin making small circular motions with your top leg, starting with clockwise circles and then switching to counterclockwise circles after a few repetitions.

Step 5. As you circle your leg, focus on keeping your hips and torso still and only moving your leg.

Step 6. Repeat for several repetitions, then switch to your other side and repeat the exercise with your other leg.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Sumo Squat",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet wider than shoulder-width apart, toes pointing outwards at a 45-degree angle.

Step 2. Engage your core and keep your chest lifted as you lower your hips down and back, bending your knees to form a 90-degree angle.

Step 3. Make sure your knees are in line with your toes and that they do not go beyond them.

Step 4. Keep your weight on your heels and press through them to stand back up, squeezing your glutes at the top of the movement.

Step 5. Repeat the squat for the desired number of reps, maintaining proper form throughout the exercise.

Hint: To increase the difficulty, you can hold weights in your hands or add pulses at the bottom of the squat.
Remember to listen to your body and start with a lower number of reps, gradually increasing as you build strength and endurance.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Wall Sit",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Find a clear wall: Look for a flat, clear wall with enough space to sit with your back against it.

Step 2. Stand with your back against the wall: Stand with your back against the wall, with your feet shoulder-width apart and about 2 feet away from the wall.

Step 3. Slide down into a seated position: Slide down the wall, bending your knees until your thighs are parallel to the floor, and your knees are directly above your ankles.

Step 4. Hold the position: Hold the seated position, keeping your back flat against the wall, and your thighs parallel to the floor. Hold for as long as you can, ideally for 30-60 seconds.

Step 5. Breathe steadily: Remember to breathe deeply and steadily as you hold the position, keeping your core tight and engaged.

Step 6. Stand up slowly: Push yourself back up the wall to standing position, being careful not to strain your knees or back.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
          ]),
      Exercise(
          color: const Color(0xFF000000),
          name: "Stretching",
          imgName: "cat6",
          exerciseDetailsList: [],
          subExercises: [
            SubExercise(
              color: const Color(0xFF000000),
              name: "Piriformis Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie on your back with your knees bent and feet flat on the floor.

Step 2. Cross your left ankle over your right knee, so that your left knee is pointing out to the side.

Step 3. Use your hands to gently pull your right knee towards your chest.

Step 4. Hold the stretch for 15-30 seconds, feeling a stretch in your left glute (butt) muscle.

Step 5. Release the stretch and repeat on the other side, crossing your right ankle over your left knee and pulling your left knee towards your chest.

Step 6. Repeat the stretch on both sides for 2-3 sets, holding each stretch for 15-30 seconds.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Triceps Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet shoulder-width apart, keeping your back straight and your core engaged.

Step 2. Raise your right arm straight up and bend your elbow so that your hand reaches towards the back of your neck.

Step 3. Place your left hand on your right elbow and gently push your elbow towards your left shoulder until you feel a stretch in your triceps.

Step 4. Hold the stretch for 15-30 seconds, making sure to breathe deeply throughout.

Step 5. Repeat the stretch on the opposite arm by raising your left arm straight up and bending your elbow.

Step 6. Do 2-3 sets of the stretch on each arm, taking a short break between sets if needed.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Figure Four Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Lie on your back with both feet on the ground and knees bent.

Step 2. Cross your right ankle over your left knee.

Step 3. Grasp the back of your left thigh with both hands.

Step 4. Gently pull your left leg towards your chest until you feel a stretch in your right hip.

Step 5. Hold the stretch for 15-30 seconds, then release.

Step 6. Repeat on the other side by crossing your left ankle over your right knee and grasping the back of your right thigh with both hands.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "90/90 Hip Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Sit on the floor with your legs bent in front of you, then lean back and place your hands behind you to support your upper body.

Step 2. Lift your left leg and place your left foot on the floor with your knee at a 90-degree angle, creating an L-shape with your leg.

Step 3. Take your right leg and place it behind you with your knee also at a 90-degree angle, creating another L-shape with your leg.

Step 4. Slowly rotate your torso to the left while keeping your hips facing forward until you feel a stretch in your left hip.

Step 5. Hold this position for 30 seconds, then rotate your torso to the right and hold for another 30 seconds.

Step 6. Repeat the exercise by switching the position of your legs, placing your right foot in front and your left foot behind, and repeating steps 4 and 5.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Seated Shoulder Squeeze",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Sit on a sturdy chair with your back straight and feet flat on the ground.

Step 2. Bring your shoulders back and down, and squeeze your shoulder blades together.

Step 3. Hold the squeeze for a few seconds while keeping your neck and head relaxed.

Step 4. Slowly release the squeeze and return to the starting position.

Step 5. Repeat the exercise for 10-15 repetitions.

Step 6. Aim to perform the exercise 2-3 times per week to strengthen your upper back muscles.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
            SubExercise(
              color: const Color(0xFF000000),
              name: "Side Bend Stretch",
              imgName: " ",
              subExercises: [],
              exerciseDetailsList: [
                ExerciseDetails(
                  color: const Color(0xFF000000),
                  name: "",
                  imgName: "",
                  subExercises: [],
                  description:
                      """Step 1. Stand with your feet shoulder-width apart, keeping your spine straight.

Step 2. Place your right hand on your hip and extend your left arm above your head.

Step 3. Slowly bend your torso to the right side, keeping your left arm extended.

Step 4. Hold the stretch for 10-15 seconds, feeling the stretch in your left side.

Step 5. Return to the starting position and switch sides, placing your left hand on your hip and extending your right arm above your head.

Step 6. Repeat the stretch on the left side, holding for 10-15 seconds.

Note: It's important to avoid overstretching or bouncing during this exercise, as it can cause injury. Start with a gentle stretch and gradually increase the intensity if comfortable.""",
                  exerciseDetailsList: [],
                ),
              ],
            ),
          ])
    ];
  }
}
