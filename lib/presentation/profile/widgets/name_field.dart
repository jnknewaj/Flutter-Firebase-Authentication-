import 'package:authentication/application/profile/profile_form/profile_form_bloc.dart';
import 'package:authentication/domain/core/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NameField extends HookWidget {
  const NameField();

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
      listenWhen: (prev, current) => prev.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text = state.appUser.name.getOrCrash();
      },
      buildWhen: (prev, current) => prev.appUser.name != current.appUser.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Title',
              border: OutlineInputBorder(),
            ),
            maxLength: TextData.maxLength,
            maxLines: null,
            minLines: 1,
            onChanged: (value) => context
                .read<ProfileFormBloc>()
                .add(ProfileFormEvent.nameChanged(value)),
            validator: (_) =>
                context.read<ProfileFormBloc>().state.appUser.name.value.fold(
                      (l) => l.maybeMap(
                        exceedingLength: (f) => 'Exceeding length, max : ${f.max}',
                        orElse: null,
                      ),
                      (_) => null,
                    ),
          ),
        );
      },
    );
  }
}
